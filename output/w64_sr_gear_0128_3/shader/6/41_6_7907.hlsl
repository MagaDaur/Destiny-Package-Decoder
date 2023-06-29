// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:34 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[2];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[1];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
    r2.x = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.y = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.z;
    r4.x = 2.32830644e-010 * r3.y;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.z;
    r4.y = 2.32830644e-010 * r3.y;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.z;
    r5.w = 2.32830644e-010 * r3.y;
    r2.w = 2.32830644e-010 * r3.x;
    r3.yz = r3.xx * float2(1.7881393e-009,9.14388773e-011) + float2(0,0.607272983);
    r6.xyz = cmp(r3.xxx >= float3(0,357912512,4.2949673e+009));
    r6.xyz = r6.xyz ? float3(1,1,1) : 0;
    r3.xw = r6.xy + r6.yz;
    r3.xw = float2(9.99999997e-007,9.99999997e-007) + r3.xw;
    r3.xw = float2(0.5,0.5) * r3.xw;
    r3.xw = frac(r3.xw);
    r3.xy = r3.xw * r3.yz;
    r3.xy = float2(2,2) * r3.xy;
    r3.x = r3.x + r3.y;
    r3.x = 9.99999997e-007 + r3.x;
    r3.x = min(1, r3.x);
    r1.w = r3.x * 0.25 + 0.75;
    r3.xyzw = cb13[0].xxxx * float4(4.67000008,2.99000001,1.08000004,1.35000002) + float4(0.519999981,0.370000005,0.159999996,0.790000021);
    r6.xyzw = round(r3.xyzw);
    r3.xyzw = -r6.xyzw + r3.xyzw;
    r6.xyzw = abs(r3.xyzw) * float4(-16,-16,-16,-16) + float4(8,8,8,8);
    r3.xyzw = float4(0.25,0.25,0.25,0.25) * r3.xyzw;
    r3.x = dot(r3.xyzw, r6.xyzw);
    r3.x = 0.5 + r3.x;
    r3.y = r3.x * r3.x;
    r3.x = r3.x * -2 + 3;
    r3.x = saturate(r3.x * r3.y);
    r3.x = 1 + r3.x;
    r3.y = cb10[0].x + 0.25;
    r3.y = (int)r3.y;
    r6.xyz = -cb9[r3.y+32].zxy * cb9[r3.y+32].yzx;
    r6.xyz = -cb9[r3.y+32].yzx * cb9[r3.y+32].zxy + -r6.xyz;
    r3.z = dot(-cb9[r3.y+32].xyz, cb9[r3.y+32].xyz);
    r7.w = -r3.z;
    r7.xyz = cb9[r3.y+32].www * cb9[r3.y+32].xyz + r6.xyz;
    r6.xyzw = cb9[r3.y+32].xyzw * float4(-1,-1,-1,1);
    r6.xyzw = cb9[r3.y+32].wwww * r6.xyzw + r7.xyzw;
    r7.xyz = r6.xyz;
    r7.w = -0;
    r6.xyzw = r6.wwww * float4(0,0,0,1) + r7.xyzw;
    r7.xyz = cb9[r3.y+32].zxy * r6.yzx;
    r7.xyz = cb9[r3.y+32].yzx * r6.zxy + -r7.xyz;
    r3.z = dot(cb9[r3.y+32].xyz, r6.xyz);
    r8.w = -r3.z;
    r8.xyz = cb9[r3.y+32].www * r6.xyz + r7.xyz;
    r6.xyzw = r6.wwww * cb9[r3.y+32].xyzw + r8.xyzw;
    r2.z = 2.32830644e-010 * r0.w;
    r3.zw = r0.ww * float2(8.07396594e-010,8.3153838e-011) + float2(0,0.642857015);
    r7.xyz = cmp(r0.www >= float3(0,887628032,4.2949673e+009));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r7.xy = r7.xy + r7.yz;
    r7.xy = float2(9.99999997e-007,9.99999997e-007) + r7.xy;
    r7.xy = float2(0.5,0.5) * r7.xy;
    r7.xy = frac(r7.xy);
    r3.zw = r7.xy * r3.zw;
    r3.xzw = float3(0.100000001,2,2) * r3.xzw;
    r0.w = r3.z + r3.w;
    r0.w = 9.99999997e-007 + r0.w;
    r0.w = min(1, r0.w);
    r7.xyz = r0.www * float3(0,0,-0.200000003) + float3(-1,0,0.100000001);
    r8.xyz = r7.zxy * -r6.yzx;
    r8.xyz = r7.yzx * -r6.zxy + -r8.xyz;
    r0.w = dot(r7.xz, -r6.xz);
    r8.w = -r0.w;
    r7.xyw = float3(-1,0,0);
    r7.xyzw = r6.wwww * r7.xyzw + r8.xyzw;
    r8.xyz = r7.yzx * r6.zxy;
    r8.xyz = r6.yzx * r7.zxy + -r8.xyz;
    r7.xyz = r6.www * r7.xyz + r8.xyz;
    r7.xyz = r7.www * r6.xyz + r7.xyz;
    r3.yzw = cb9[r3.y+0].xyz + r7.xyz;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r0.w = r0.w * 4.65661287e-010 + -1;
    r0.z = (int)r0.z * 0x0019660d;
    r0.z = (int)r0.z * 0x0019660d;
    r0.w = r0.w * r3.x;
    r7.x = 0.400000006 * r0.w;
    r7.yzw = float3(0,0,0);
    r0.z = mad((int)r0.z, 0x0019660d, 0x8a7ccdb7);
    r0.z = (int)r0.z + 0x0ae135d3;
    r0.z = (int)r0.z + 0x3c6ef35f;
    r0.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r0.z = cb0[10].x * r0.z;
    r0.zw = float2(2.32830644e-010,1.46291812e-009) * r0.zw;
    sincos(r0.z, r3.x, r8.x);
    sincos(r0.w, r9.x, r10.x);
    r8.y = r9.x * r3.x;
    r8.z = r10.x * r3.x;
    r8.xyz = r8.xyz + r8.xyz;
    r9.xyz = cb9[r0.y+32].yzx * cb9[r0.y+0].zxy;
    r9.xyz = cb9[r0.y+0].yzx * cb9[r0.y+32].zxy + -r9.xyz;
    r0.z = dot(cb9[r0.y+0].xyz, cb9[r0.y+32].xyz);
    r9.w = -r0.z;
    r10.xyz = cb9[r0.y+0].xyz;
    r10.w = 0;
    r9.xyzw = cb9[r0.y+32].wwww * r10.xyzw + r9.xyzw;
    r10.xyz = -cb9[r0.y+32].zxy * r9.yzx;
    r10.xyz = -cb9[r0.y+32].yzx * r9.zxy + -r10.xyz;
    r9.xyz = cb9[r0.y+32].www * r9.xyz + r10.xyz;
    r9.xyz = r9.www * -cb9[r0.y+32].xyz + r9.xyz;
    r10.xyz = -cb9[r0.y+32].zxy * r6.yzx;
    r10.xyz = -cb9[r0.y+32].yzx * r6.zxy + -r10.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, r6.xyz);
    r11.w = -r0.z;
    r11.xyz = cb9[r0.y+32].www * r6.xyz + r10.xyz;
    r10.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r6.xyzw = r6.wwww * r10.xyzw + r11.xyzw;
    r10.xyz = cb9[r0.y+32].yzx * r3.wyz;
    r10.xyz = r3.zwy * cb9[r0.y+32].zxy + -r10.xyz;
    r0.z = dot(r3.yzw, cb9[r0.y+32].xyz);
    r10.w = -r0.z;
    r3.xyz = cb9[r0.y+32].www * r3.yzw;
    r3.w = 0;
    r3.xyzw = r10.xyzw + r3.xyzw;
    r10.xyz = -cb9[r0.y+32].zxy * r3.yzx;
    r10.xyz = -cb9[r0.y+32].yzx * r3.zxy + -r10.xyz;
    r3.xyz = cb9[r0.y+32].www * r3.xyz + r10.xyz;
    r0.yzw = r3.www * -cb9[r0.y+32].xyz + r3.xyz;
    r0.yzw = -r9.xyz + r0.yzw;
    r3.xyzw = r7.yzxx * -r6.zxyx;
    r9.xyz = -r7.zxy * -r6.yzx + r3.xyz;
    r9.w = -r3.w;
    r3.xyz = r6.www * r7.xyz;
    r3.w = 0;
    r3.xyzw = r9.xyzw + r3.xyzw;
    r7.xyz = r6.zxy * r3.yzx;
    r7.xyz = r6.yzx * r3.zxy + -r7.xyz;
    r3.xyz = r6.www * r3.xyz + r7.xyz;
    r3.xyz = r3.www * r6.xyz + r3.xyz;
    r5.xyz = r3.xyz + r0.yzw;
    r0.yzw = r8.zxy * -r6.yzx;
    r3.xyz = r8.yzx * -r6.zxy + -r0.yzw;
    r0.y = dot(r8.xyz, -r6.xyz);
    r3.w = -r0.y;
    r7.xyz = r6.www * r8.xyz;
    r3.xyzw = r3.xyzw + r7.xyzw;
    r0.yzw = r6.zxy * r3.yzx;
    r0.yzw = r6.yzx * r3.zxy + -r0.yzw;
    r0.yzw = r6.www * r3.xyz + r0.yzw;
    r3.xyz = r3.www * r6.xyz + r0.yzw;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r3.xyzw
    r3.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.xxxx, r5.xyzw
    r1.xz = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.zzzz, r2.xyzw
    r4.z = r5.w;
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.wwww, r4.xyzw
  }
  return;
}