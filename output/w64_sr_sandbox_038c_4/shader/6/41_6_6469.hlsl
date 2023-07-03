// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:59 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[2];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[100];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = cb10[1].x + 0.25;
    r0.z = cmp(cb0[23].x < cb0[24].x);
    r0.z = r0.z ? cb0[23].x : 0;
    r0.yz = (int2)r0.yz;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = (uint)vThreadID.x;
    r1.y = cb0[19].x + r0.z;
    r0.z = cb0[21].x + r1.y;
    r0.z = (uint)r0.z;
    r0.w = (int)r0.z ^ 61;
    r0.z = (uint)r0.z >> 16;
    r0.z = (int)r0.z ^ (int)r0.w;
    r0.z = (int)r0.z * 9;
    r0.w = (uint)r0.z >> 4;
    r0.z = (int)r0.w ^ (int)r0.z;
    r0.z = (int)r0.z * 0x27d4eb2d;
    r0.w = (uint)r0.z >> 15;
    r0.z = (int)r0.w ^ (int)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r1.w = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.x = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.z;
    r2.y = 2.32830644e-010 * r0.w;
    r0.w = r0.w * 6.98491915e-012 + 0.00999999978;
    r2.zw = float2(2.32830644e-010,2.32830644e-010) * r3.xy;
    r3.y = r3.y * -4.63045213e-010 + 2.98876405;
    r3.z = r2.w * r2.w;
    r3.y = r3.y * r3.z;
    r3.y = min(1, r3.y);
    r1.z = r3.y * 0.400000036 + 0.800000012;
    r3.y = cb10[0].x + 0.25;
    r3.y = (int)r3.y;
    r3.z = saturate(cb0[2].x);
    r4.xyzw = r3.zzzz * float4(0.836013019,1.55650306,0.97794199,1.06086898) + float4(0,-0.336109012,-0.0390749983,-0.0940560028);
    r5.xyzw = r3.zzzz * float4(0.766090989,1.57081401,1.03936195,43842.7813) + float4(0.121720999,-0.569857001,-0.0883620009,-123020.25);
    r6.xyzw = cmp(r3.zzzz >= float4(0,0.466500014,0.513400018,0.662999988));
    r6.xyzw = r6.xyzw ? float4(1,1,1,1) : 0;
    r7.xyzw = cmp(r3.zzzz >= float4(0.731999993,0.859399974,0.906000018,1));
    r8.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
    r6.xyz = r6.xyz + r6.yzw;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r4.xyz = r6.xyz * r4.xyz;
    r6.xyz = r8.xyz + r8.yzw;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r5.xyz = r6.xyz * r5.xyz;
    r3.w = 2;
    r4.xy = r3.ww * r4.xy;
    r5.xy = float2(2,2) * r5.xy;
    r4.x = r4.x + r4.y;
    r3.w = r3.w * r4.z + r4.x;
    r3.w = r4.w * r6.w + r3.w;
    r4.x = r5.x + r5.y;
    r4.x = r5.z * 2 + r4.x;
    r4.x = r8.w * 0.950999975 + r4.x;
    r3.w = saturate(r7.x ? r4.x : r3.w);
    r3.w = -128.805298 * r3.w;
    sincos(r3.w, r4.x, r5.x);
    r4.xyz = float3(0,1,0) * r4.xxx;
    r6.xyz = -cb9[r3.y+32].zxy * cb9[r3.y+32].yzx;
    r6.xyz = -cb9[r3.y+32].yzx * cb9[r3.y+32].zxy + -r6.xyz;
    r3.w = dot(-cb9[r3.y+32].xyz, cb9[r3.y+32].xyz);
    r7.w = -r3.w;
    r7.xyz = cb9[r3.y+32].www * cb9[r3.y+32].xyz + r6.xyz;
    r6.xyzw = cb9[r3.y+32].xyzw * float4(-1,-1,-1,1);
    r6.xyzw = cb9[r3.y+32].wwww * r6.xyzw + r7.xyzw;
    r7.xyzw = r6.zxyy * r4.yzzy;
    r7.xyz = -r4.zzy * r6.yzx + r7.xyz;
    r8.w = -r7.w;
    r8.xyz = r5.xxx * r6.xyz + r7.xyz;
    r4.w = r5.x;
    r4.xyzw = r6.wwww * r4.xyzw + r8.xyzw;
    r5.xyz = cb9[r3.y+32].zxy * r4.yzx;
    r5.xyz = cb9[r3.y+32].yzx * r4.zxy + -r5.xyz;
    r3.w = dot(cb9[r3.y+32].xyz, r4.xyz);
    r6.w = -r3.w;
    r6.xyz = cb9[r3.y+32].www * r4.xyz + r5.xyz;
    r4.xyzw = r4.wwww * cb9[r3.y+32].xyzw + r6.xyzw;
    r6.xyzw = float4(0,0.349999994,0,0) * r4.wwww;
    r6.xyzw = r4.zxxy * float4(-0.349999994,-0,0.349999994,0.349999994) + r6.xyzw;
    r5.xyz = r6.yzx * r4.zxy;
    r5.xyz = r4.yzx * r6.zxy + -r5.xyz;
    r5.xyz = r4.www * r6.xyz + r5.xyz;
    r5.xyz = r6.www * r4.xyz + r5.xyz;
    r5.xyz = cb9[r3.y+0].xyz + r5.xyz;
    r3.y = round(r2.z);
    r3.y = r3.x * 2.32830644e-010 + -r3.y;
    r3.w = abs(r3.y) * -16 + 8;
    r3.y = r3.y * r3.w;
    r3.w = abs(r3.y) * 0.224999994 + 0.774999976;
    r6.y = r3.y * r3.w;
    r3.x = r3.x * 2.32830644e-010 + 0.25;
    r3.y = round(r3.x);
    r3.x = r3.x + -r3.y;
    r3.y = abs(r3.x) * -16 + 8;
    r3.x = r3.x * r3.y;
    r3.y = abs(r3.x) * 0.224999994 + 0.774999976;
    r3.x = r3.x * r3.y;
    r6.z = 1.5 * abs(r3.x);
    r6.xw = float2(0,0);
    r7.xyz = r6.zwy * -r4.yzx;
    r7.xyz = r6.yzw * -r4.zxy + -r7.xyz;
    r3.y = dot(r6.yz, -r4.yz);
    r7.w = -r3.y;
    r6.xyzw = r4.wwww * r6.xyzw + r7.xyzw;
    r7.xyz = r6.yzx * r4.zxy;
    r7.xyz = r4.yzx * r6.zxy + -r7.xyz;
    r6.xyz = r4.www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * r4.xyz + r6.xyz;
    r5.xyz = r6.xyz + r5.xyz;
    r5.xyz = float3(0,0,1.5) + r5.xyz;
    r6.xyz = r3.zzz * float3(0,60204.1406,142586.141) + float3(0.5,-10845.7754,-34789.2188);
    r7.xyzw = r3.zzzz * float4(0,68493.9922,88568.0156,115019.469) + float4(0,-111279.438,-194693.781,-35832.418);
    r3.y = r3.z * r3.z;
    r6.xyz = r7.xyz * r3.yyy + r6.xyz;
    r3.y = r5.w * r3.y + r7.w;
    r7.xyzw = cmp(r3.zzzz >= float4(0,0.511099994,0.569999993,0.703000009));
    r7.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
    r8.xyzw = cmp(r3.zzzz >= float4(0.761200011,0.903999984,0.966666996,1));
    r9.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r7.xyz = r7.xyz + r7.yzw;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r6.xyw = r7.xyz * r6.xyx;
    r7.xyz = r9.xyz + r9.yzw;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r7.y = r7.y * r3.y;
    r3.y = 2;
    r3.zw = r3.yy * r6.xy;
    r6.xy = float2(1,2) * r7.xy;
    r3.z = r3.z + r3.w;
    r3.y = r3.y * r6.w + r3.z;
    r3.y = r6.z * r7.w + r3.y;
    r3.z = r6.x + r6.y;
    r3.z = r7.z * 1 + r3.z;
    r3.z = r9.w * 0.5 + r3.z;
    r3.y = saturate(r8.x ? r3.z : r3.y);
    r3.yz = float2(-0,-0.5) + r3.yy;
    r3.yz = saturate(r3.yz + r3.yz);
    r3.yz = float2(-0.800000012,-0.699999988) * r3.yz;
    r3.y = dot(float2(1,1), r3.yz);
    r3.y = 0.800000012 + r3.y;
    r6.x = cb0[3].y * abs(r3.x);
    r6.y = -cb0[3].x * abs(r3.x);
    r3.xy = r6.xy * r3.yy;
    r3.z = 0;
    r3.xyz = r5.xyz + r3.xyz;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.w = (uint)r0.z;
    r5.x = r3.w * 4.65661287e-010 + -1;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.w = (uint)r0.z;
    r5.y = r3.w * 4.65661287e-010 + -1;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r5.z = r0.z * 4.65661287e-010 + -1;
    r0.z = dot(r5.xyz, r5.xyz);
    r0.z = rsqrt(r0.z);
    r5.xyz = r5.xyz * r0.zzz;
    r5.xyz = r5.xyz * r0.www;
    r6.xyz = cb9[r0.y+32].yzx * cb9[r0.y+0].zxy;
    r6.xyz = cb9[r0.y+0].yzx * cb9[r0.y+32].zxy + -r6.xyz;
    r0.z = dot(cb9[r0.y+0].xyz, cb9[r0.y+32].xyz);
    r6.w = -r0.z;
    r7.xyz = cb9[r0.y+0].xyz;
    r7.w = 0;
    r6.xyzw = cb9[r0.y+32].wwww * r7.xyzw + r6.xyzw;
    r7.xyz = -cb9[r0.y+32].zxy * r6.yzx;
    r7.xyz = -cb9[r0.y+32].yzx * r6.zxy + -r7.xyz;
    r6.xyz = cb9[r0.y+32].www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * -cb9[r0.y+32].xyz + r6.xyz;
    r7.xyz = -cb9[r0.y+32].zxy * r4.yzx;
    r7.xyz = -cb9[r0.y+32].yzx * r4.zxy + -r7.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, r4.xyz);
    r8.w = -r0.z;
    r8.xyz = cb9[r0.y+32].www * r4.xyz + r7.xyz;
    r7.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r4.xyzw = r4.wwww * r7.xyzw + r8.xyzw;
    r7.xyz = cb9[r0.y+32].yzx * r3.zxy;
    r7.xyz = r3.yzx * cb9[r0.y+32].zxy + -r7.xyz;
    r0.z = dot(r3.xyz, cb9[r0.y+32].xyz);
    r7.w = -r0.z;
    r3.xyz = cb9[r0.y+32].www * r3.xyz;
    r3.w = 0;
    r3.xyzw = r7.xyzw + r3.xyzw;
    r7.xyz = -cb9[r0.y+32].zxy * r3.yzx;
    r7.xyz = -cb9[r0.y+32].yzx * r3.zxy + -r7.xyz;
    r3.xyz = cb9[r0.y+32].www * r3.xyz + r7.xyz;
    r0.yzw = r3.www * -cb9[r0.y+32].xyz + r3.xyz;
    r0.yzw = -r6.xyz + r0.yzw;
    r3.xyz = r5.zxy * -r4.yzx;
    r3.xyz = r5.yzx * -r4.zxy + -r3.xyz;
    r5.w = dot(r5.xyz, -r4.xyz);
    r3.w = -r5.w;
    r5.xyz = r4.www * r5.xyz;
    r5.w = 0;
    r3.xyzw = r5.xyzw + r3.xyzw;
    r5.xyz = r4.zxy * r3.yzx;
    r5.xyz = r4.yzx * r3.zxy + -r5.xyz;
    r3.xyz = r4.www * r3.xyz + r5.xyz;
    r3.xyz = r3.www * r4.xyz + r3.xyz;
    r3.xyz = r3.xyz + r0.yzw;
    r5.xyzw = float4(1,0,0,0) * r4.wwww;
    r5.xyzw = r4.zzyx * float4(-0,1,-1,1) + r5.xyzw;
    r0.yzw = r5.yzx * r4.zxy;
    r0.yzw = r4.yzx * r5.zxy + -r0.yzw;
    r0.yzw = r4.www * r5.xyz + r0.yzw;
    r4.xyz = r5.www * r4.xyz + r0.yzw;
    r0.y = (uint)vThreadID.x << 2;
    r0.x = (int)r0.y + (int)r0.x;
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r4.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r3.xyzw
    r1.x = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r2.xyzw
  }
  return;
}