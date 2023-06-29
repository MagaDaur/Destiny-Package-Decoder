// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:36 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[2];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[132];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = cb10[0].x + 0.25;
    r0.y = (int)r0.y;
    r0.z = (int)cb0[23].x;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = cb10[1].x + 0.25;
    r0.w = cmp(cb0[23].x < cb0[24].x);
    r0.w = r0.w ? cb0[23].x : 0;
    r0.zw = (int2)r0.zw;
    r0.z = (int)r0.w + (int)r0.z;
    r0.w = (uint)vThreadID.x;
    r1.z = cb0[19].x + r0.w;
    r2.x = cb0[21].x + r1.z;
    r2.x = (uint)r2.x;
    r2.y = (int)r2.x ^ 61;
    r2.x = (uint)r2.x >> 16;
    r2.x = (int)r2.x ^ (int)r2.y;
    r2.x = (int)r2.x * 9;
    r2.y = (uint)r2.x >> 4;
    r2.x = (int)r2.y ^ (int)r2.x;
    r2.x = (int)r2.x * 0x27d4eb2d;
    r2.y = (uint)r2.x >> 15;
    r2.x = (int)r2.y ^ (int)r2.x;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r2.x;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r2.x;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.w = (uint)r2.x;
    r3.xyz = float3(2.32830644e-010,2.32830644e-010,2.32830644e-010) * r2.yzw;
    r4.xy = r2.yy * float2(8.76539882e-011,1.05549902e-009) + float2(0,-3.53333402);
    r5.xyz = cmp(r2.yyy >= float3(0,3.6507223e+009,4.2949673e+009));
    r5.xyz = r5.xyz ? float3(1,1,1) : 0;
    r2.yw = r5.xy + r5.yz;
    r2.yw = float2(9.99999997e-007,9.99999997e-007) + r2.yw;
    r2.yw = float2(0.5,0.5) * r2.yw;
    r2.yw = frac(r2.yw);
    r2.yw = r2.yw * r4.xy;
    r2.yw = float2(2,2) * r2.yw;
    r2.y = r2.y + r2.w;
    r2.y = saturate(9.99999997e-007 + r2.y);
    r2.y = r2.y * 0.0450000018 + 0.00499999989;
    r4.xy = r2.zz * float2(9.31322588e-011,1.290547e-009) + float2(0,-4.54285717);
    r5.xyz = cmp(r2.zzz >= float3(0,3.79388646e+009,4.2949673e+009));
    r5.xyz = r5.xyz ? float3(1,1,1) : 0;
    r2.zw = r5.xy + r5.yz;
    r2.zw = float2(9.99999997e-007,9.99999997e-007) + r2.zw;
    r2.zw = float2(0.5,0.5) * r2.zw;
    r2.zw = frac(r2.zw);
    r2.zw = r2.zw * r4.xy;
    r2.zw = float2(2,2) * r2.zw;
    r2.z = r2.z + r2.w;
    r2.z = saturate(9.99999997e-007 + r2.z);
    r1.w = r2.z * 1.75 + 1.25;
    r0.w = 1 + r0.w;
    r0.w = r0.w / cb0[89].x;
    r2.z = 1 + -r0.w;
    r2.z = cb0[22].x * r2.z;
    r4.w = r2.z / r1.w;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r2.x;
    r5.x = r2.z * 4.65661287e-010 + -1;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r2.x;
    r5.y = r2.z * 4.65661287e-010 + -1;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r2.x;
    r5.z = r2.x * 4.65661287e-010 + -1;
    r2.x = dot(r5.xyz, r5.xyz);
    r2.x = rsqrt(r2.x);
    r2.xzw = r5.xyz * r2.xxx;
    r2.xyz = r2.xzw * r2.yyy;
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = rsqrt(r2.w);
    r5.xyz = r2.xyz * r2.www;
    r5.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * r5.xyz;
    r2.w = cmp(cb0[126].x < 0.5);
    if (r2.w != 0) {
      r6.xyzw = cb9[r0.y+32].xyzw;
      r7.xyz = cb9[r0.y+0].xyz;
    } else {
      r2.w = cmp(cb0[126].x < 1.5);
      if (r2.w != 0) {
        r8.xyz = cb9[r0.y+0].xyz + -cb0[129].xyz;
        r7.xyz = r0.www * r8.xyz + cb0[129].xyz;
        r8.xyzw = cb9[r0.y+32].xyzw + -cb0[128].xyzw;
        r8.xyzw = r0.wwww * r8.xyzw + cb0[128].xyzw;
        r2.w = dot(r8.xyzw, r8.xyzw);
        r2.w = rsqrt(r2.w);
        r6.xyzw = r8.xyzw * r2.wwww;
      } else {
        r8.xyz = cb9[r0.y+0].xyz + -cb0[129].xyz;
        r9.xyz = -cb0[130].xyz + cb0[129].xyz;
        r2.w = dot(r8.xyz, r8.xyz);
        r2.w = sqrt(r2.w);
        r2.w = max(9.99999975e-006, r2.w);
        r10.xyz = r8.xyz / r2.www;
        r5.w = dot(r9.xyz, r10.xyz);
        r5.w = r5.w + r5.w;
        r10.xyz = r5.www * r10.xyz + -r9.xyz;
        r5.w = dot(r10.xyz, r10.xyz);
        r5.w = sqrt(r5.w);
        r5.w = max(9.99999975e-006, r5.w);
        r10.xyz = r10.xyz / r5.www;
        r10.xyz = r10.xyz * r2.www + cb9[r0.y+0].xyz;
        r10.xyz = -cb0[129].xyz + r10.xyz;
        r2.w = cmp(2.5 < cb0[126].x);
        if (r2.w != 0) {
          r2.w = dot(r9.xyz, r9.xyz);
          r2.w = sqrt(r2.w);
          r2.w = max(9.99999975e-006, r2.w);
          r11.xyz = -cb0[131].xyz + cb0[130].xyz;
          r12.xyz = r9.xyz / r2.www;
          r5.w = dot(r11.xyz, r12.xyz);
          r5.w = r5.w + r5.w;
          r11.xyz = r5.www * r12.xyz + -r11.xyz;
          r5.w = dot(r11.xyz, r11.xyz);
          r5.w = sqrt(r5.w);
          r5.w = max(9.99999975e-006, r5.w);
          r11.xyz = r11.xyz / r5.www;
          r11.xyz = r11.xyz * r2.www + cb0[129].xyz;
          r11.xyz = -cb0[130].xyz + r11.xyz;
          r11.xyz = float3(0.5,0.5,0.5) * r11.xyz;
        } else {
          r11.xyz = r9.xyz;
        }
        r11.xyz = r11.xyz + -r9.xyz;
        r9.xyz = r11.xyz * float3(2,2,2) + r9.xyz;
        r10.xyz = r10.xyz * float3(0.5,0.5,0.5) + -r8.xyz;
        r8.xyz = r10.xyz * float3(2,2,2) + r8.xyz;
        r2.w = r0.w * r0.w;
        r5.w = r2.w * r0.w;
        r7.w = 3 * r2.w;
        r8.w = r5.w * 2 + -r7.w;
        r8.w = 1 + r8.w;
        r7.w = r5.w * -2 + r7.w;
        r5.w = -r2.w * 2 + r5.w;
        r5.w = r5.w + r0.w;
        r2.w = r2.w * r0.w + -r2.w;
        r10.xyz = cb9[r0.y+0].xyz * r7.www;
        r10.xyz = r8.www * cb0[129].xyz + r10.xyz;
        r9.xyz = r5.www * r9.xyz + r10.xyz;
        r7.xyz = r2.www * r8.xyz + r9.xyz;
        r8.xyzw = cb9[r0.y+32].xyzw + -cb0[128].xyzw;
        r8.xyzw = r0.wwww * r8.xyzw + cb0[128].xyzw;
        r0.y = dot(r8.xyzw, r8.xyzw);
        r0.y = rsqrt(r0.y);
        r6.xyzw = r8.xyzw * r0.yyyy;
      }
    }
    r8.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r8.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r8.xyz;
    r0.y = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r8.w = -r0.y;
    r9.xyz = cb9[r0.z+0].xyz;
    r9.w = 0;
    r8.xyzw = cb9[r0.z+32].wwww * r9.xyzw + r8.xyzw;
    r9.xyz = -cb9[r0.z+32].zxy * r8.yzx;
    r9.xyz = -cb9[r0.z+32].yzx * r8.zxy + -r9.xyz;
    r8.xyz = cb9[r0.z+32].www * r8.xyz + r9.xyz;
    r8.xyz = r8.www * -cb9[r0.z+32].xyz + r8.xyz;
    r9.xyz = -cb9[r0.z+32].zxy * r6.yzx;
    r9.xyz = -cb9[r0.z+32].yzx * r6.zxy + -r9.xyz;
    r0.y = dot(-cb9[r0.z+32].xyz, r6.xyz);
    r10.w = -r0.y;
    r10.xyz = cb9[r0.z+32].www * r6.xyz + r9.xyz;
    r9.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r6.xyzw = r6.wwww * r9.xyzw + r10.xyzw;
    r9.xyz = cb9[r0.z+32].yzx * r7.zxy;
    r9.xyz = r7.yzx * cb9[r0.z+32].zxy + -r9.xyz;
    r0.y = dot(r7.xyz, cb9[r0.z+32].xyz);
    r9.w = -r0.y;
    r7.xyz = cb9[r0.z+32].www * r7.xyz;
    r7.w = 0;
    r7.xyzw = r9.xyzw + r7.xyzw;
    r9.xyz = -cb9[r0.z+32].zxy * r7.yzx;
    r9.xyz = -cb9[r0.z+32].yzx * r7.zxy + -r9.xyz;
    r7.xyz = cb9[r0.z+32].www * r7.xyz + r9.xyz;
    r7.xyz = r7.www * -cb9[r0.z+32].xyz + r7.xyz;
    r7.xyz = -r8.xyz + r7.xyz;
    r8.xyz = -r6.yzx * r2.zxy;
    r8.xyz = r2.yzx * -r6.zxy + -r8.xyz;
    r0.y = dot(r2.xyz, -r6.xyz);
    r8.w = -r0.y;
    r2.xyz = r6.www * r2.xyz;
    r2.w = 0;
    r2.xyzw = r8.xyzw + r2.xyzw;
    r8.xyz = r6.zxy * r2.yzx;
    r8.xyz = r6.yzx * r2.zxy + -r8.xyz;
    r2.xyz = r6.www * r2.xyz + r8.xyz;
    r2.xyz = r2.www * r6.xyz + r2.xyz;
    r4.xyz = r2.xyz + r7.xyz;
    r2.xyz = -r6.yzx * r5.zxy;
    r2.xyz = r5.yzx * -r6.zxy + -r2.xyz;
    r0.y = dot(r5.xyz, -r6.xyz);
    r2.w = -r0.y;
    r5.xyz = r6.www * r5.xyz;
    r5.w = 0;
    r2.xyzw = r5.xyzw + r2.xyzw;
    r5.xyz = r6.zxy * r2.yzx;
    r5.xyz = r6.yzx * r2.zxy + -r5.xyz;
    r2.xyz = r6.www * r2.xyz + r5.xyz;
    r2.xyz = r2.www * r6.xyz + r2.xyz;
    r5.xyz = -cb9[r0.z+32].yzx * r4.zxy;
    r5.xyz = r4.yzx * -cb9[r0.z+32].zxy + -r5.xyz;
    r0.y = dot(r4.xyz, -cb9[r0.z+32].xyz);
    r5.w = -r0.y;
    r6.xyz = cb9[r0.z+32].www * r4.xyz;
    r6.w = 0;
    r5.xyzw = r6.xyzw + r5.xyzw;
    r6.xyz = cb9[r0.z+32].zxy * r5.yzx;
    r6.xyz = cb9[r0.z+32].yzx * r5.zxy + -r6.xyz;
    r5.xyz = cb9[r0.z+32].www * r5.xyz + r6.xyz;
    r5.xyz = r5.www * cb9[r0.z+32].xyz + r5.xyz;
    r0.yzw = cb9[r0.z+0].xyz + r5.xyz;
    r0.yzw = -cb12[7].xyz + r0.yzw;
    r0.y = dot(r0.yzw, r0.yzw);
    r2.w = sqrt(r0.y);
    r0.y = (uint)vThreadID.x << 2;
    r0.x = (int)r0.y + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r2.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
    r1.xy = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r1.xyzw
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r3.xyzw
  }
  return;
}