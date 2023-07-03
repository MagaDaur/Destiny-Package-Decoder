// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:39 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[3];
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
  float4 cb0[100];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = cb10[2].x + 0.25;
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
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r0.z;
    r3.xy = float2(2.32830644e-010,2.32830644e-010) * r2.xy;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r2.w = (uint)r0.z;
    r4.x = 2.32830644e-010 * r2.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r2.w = (uint)r0.z;
    r4.y = 2.32830644e-010 * r2.w;
    r2.x = r2.x * 2.32830644e-010 + r3.y;
    r2.w = 0.5 * r2.x;
    r5.xy = r2.xx * float2(0.411428511,-13.3842888) + float2(-0.196070999,65.2928772);
    r5.zw = r2.xx * float2(0.125,-25.1400146) + float2(0,12.7557182);
    r2.w = r2.w * r2.w;
    r5.xy = r5.xy * r2.ww + r5.zw;
    r6.xyz = cmp(r2.xxx >= float3(0,1.33333397,2));
    r6.xyw = r6.xyz ? float3(1,1,1) : 0;
    r6.xyz = r6.xyw + r6.yww;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r2.xw = r6.xy * r5.xy;
    r2.xw = float2(2,2) * r2.xw;
    r2.x = r2.x + r2.w;
    r2.x = r6.z * 2 + r2.x;
    r2.x = saturate(r6.w * 1 + r2.x);
    r2.x = r2.x * 54 + 6;
    r3.zw = float2(2.32830644e-010,2.32830644e-010) * r2.yz;
    r2.yw = r2.yy * float2(4.65661287e-010,-9.76386957e-011) + float2(-3,1.41935503);
    r5.x = r3.z * r3.z;
    r2.w = r5.x * r2.w;
    r2.y = r2.y * r5.x + 1;
    r2.y = max(0, r2.y);
    r2.y = r2.y * 0.199999988 + 0.800000012;
    r2.x = r2.x * r2.y;
    r2.y = min(1, r2.w);
    r5.xy = r2.zz * float2(9.31322588e-011,1.290547e-009) + float2(0,-4.54285717);
    r6.xyz = cmp(r2.zzz >= float3(0,3.79388646e+009,4.2949673e+009));
    r6.xyz = r6.xyz ? float3(1,1,1) : 0;
    r2.zw = r6.xy + r6.yz;
    r2.zw = float2(9.99999997e-007,9.99999997e-007) + r2.zw;
    r2.yzw = float3(0.261794984,0.5,0.5) * r2.yzw;
    r2.zw = frac(r2.zw);
    r2.zw = r2.zw * r5.xy;
    r2.zw = float2(2,2) * r2.zw;
    r2.z = r2.z + r2.w;
    r2.z = saturate(9.99999997e-007 + r2.z);
    r1.z = 2 + r2.z;
    r2.z = cb10[0].x + 0.25;
    r2.w = cb10[1].x + 0.25;
    r2.zw = (int2)r2.zw;
    r5.xy = cb0[4].zw + r3.xy;
    r5.xy = r5.xy * float2(18.9452477,6.99969196) + float2(3.25,0.133332998);
    r5.xy = floor(r5.xy);
    r5.x = dot(r5.xxxx, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r5.x = frac(r5.x);
    r5.x = r5.x * r5.x;
    r5.x = 251 * r5.x;
    r5.x = frac(r5.x);
    r5.x = r5.x * 0.5 + -0.25;
    r5.x = 3.1415925 * r5.x;
    sincos(r5.x, r5.x, r6.x);
    r7.xyz = float3(1,0,0) * r5.xxx;
    r5.xzw = cb9[r2.w+32].yzx * cb9[r2.w+0].zxy;
    r8.xyz = cb9[r2.w+0].yzx * cb9[r2.w+32].zxy + -r5.xzw;
    r5.x = dot(cb9[r2.w+0].xyz, cb9[r2.w+32].xyz);
    r8.w = -r5.x;
    r9.xyz = cb9[r2.w+0].xyz;
    r9.w = 0;
    r8.xyzw = cb9[r2.w+32].wwww * r9.xyzw + r8.xyzw;
    r5.xzw = -cb9[r2.w+32].zxy * r8.yzx;
    r5.xzw = -cb9[r2.w+32].yzx * r8.zxy + -r5.xzw;
    r5.xzw = cb9[r2.w+32].www * r8.xyz + r5.xzw;
    r5.xzw = r8.www * -cb9[r2.w+32].xyz + r5.xzw;
    r5.y = dot(r5.yyyy, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r5.y = frac(r5.y);
    r5.y = r5.y * r5.y;
    r5.y = 251 * r5.y;
    r5.y = frac(r5.y);
    r5.y = -1 + r5.y;
    r5.y = 3.1415925 * r5.y;
    sincos(r5.y, r8.x, r9.x);
    r8.xyz = float3(0,0,1) * r8.xxx;
    r1.w = 2.32830644e-010 * r0.w;
    r5.y = r0.w * 6.9849257e-008 + -193.000168;
    r6.yzw = cmp(r0.www >= float3(2.76309427e+009,2.77741363e+009,4.2949673e+009));
    r6.yzw = r6.yzw ? float3(1,1,1) : 0;
    r6.yz = r6.yz + r6.zw;
    r6.yz = float2(9.99999997e-007,9.99999997e-007) + r6.yz;
    r6.yz = float2(0.5,0.5) * r6.yz;
    r10.yz = frac(r6.yz);
    r10.x = r10.y * r5.y;
    r6.yz = r10.xz + r10.xz;
    r5.y = saturate(r6.y + r6.z);
    r5.y = 1.57079625 * r5.y;
    sincos(r5.y, r10.x, r11.x);
    r10.xyz = float3(0,1,0) * r10.xxx;
    r6.yzw = -cb9[r2.w+32].zxy * cb9[r2.z+32].yzx;
    r6.yzw = -cb9[r2.w+32].yzx * cb9[r2.z+32].zxy + -r6.yzw;
    r5.y = dot(-cb9[r2.w+32].xyz, cb9[r2.z+32].xyz);
    r12.w = -r5.y;
    r12.xyz = cb9[r2.w+32].www * cb9[r2.z+32].xyz + r6.yzw;
    r13.xyzw = cb9[r2.w+32].xyzw * float4(-1,-1,-1,1);
    r12.xyzw = cb9[r2.z+32].wwww * r13.xyzw + r12.xyzw;
    r14.xyzw = r12.zxyx * r7.zzxx;
    r6.yzw = -r7.zxz * r12.yzx + r14.xyz;
    r14.w = -r14.w;
    r14.xyz = r6.xxx * r12.xyz + r6.yzw;
    r7.w = r6.x;
    r12.xyzw = r12.wwww * r7.xyzw + r14.xyzw;
    r6.yzw = cb9[r2.w+32].zxy * r12.yzx;
    r6.yzw = cb9[r2.w+32].yzx * r12.zxy + -r6.yzw;
    r5.y = dot(cb9[r2.w+32].xyz, r12.xyz);
    r14.w = -r5.y;
    r14.xyz = cb9[r2.w+32].www * r12.xyz + r6.yzw;
    r12.xyzw = r12.wwww * cb9[r2.w+32].xyzw + r14.xyzw;
    r6.yzw = -cb9[r2.w+32].zxy * r12.yzx;
    r6.yzw = -cb9[r2.w+32].yzx * r12.zxy + -r6.yzw;
    r5.y = dot(-cb9[r2.w+32].xyz, r12.xyz);
    r14.w = -r5.y;
    r14.xyz = cb9[r2.w+32].www * r12.xyz + r6.yzw;
    r12.xyzw = r12.wwww * r13.xyzw + r14.xyzw;
    r13.xyzw = r12.zxyz * r8.yzyz;
    r6.yzw = -r8.zyy * r12.yzx + r13.xyz;
    r13.w = -r13.w;
    r13.xyz = r9.xxx * r12.xyz + r6.yzw;
    r8.w = r9.x;
    r12.xyzw = r12.wwww * r8.xyzw + r13.xyzw;
    r6.yzw = cb9[r2.w+32].zxy * r12.yzx;
    r6.yzw = cb9[r2.w+32].yzx * r12.zxy + -r6.yzw;
    r5.y = dot(cb9[r2.w+32].xyz, r12.xyz);
    r13.w = -r5.y;
    r13.xyz = cb9[r2.w+32].www * r12.xyz + r6.yzw;
    r12.xyzw = r12.wwww * cb9[r2.w+32].xyzw + r13.xyzw;
    r6.yzw = -cb9[r2.z+32].zxy * r12.yzx;
    r6.yzw = -cb9[r2.z+32].yzx * r12.zxy + -r6.yzw;
    r5.y = dot(-cb9[r2.z+32].xyz, r12.xyz);
    r13.w = -r5.y;
    r13.xyz = cb9[r2.z+32].www * r12.xyz + r6.yzw;
    r14.xyzw = cb9[r2.z+32].xyzw * float4(-1,-1,-1,1);
    r12.xyzw = r12.wwww * r14.xyzw + r13.xyzw;
    r13.xyzw = r12.zxyy * r10.yzzy;
    r6.yzw = -r10.zzy * r12.yzx + r13.xyz;
    r13.w = -r13.w;
    r13.xyz = r11.xxx * r12.xyz + r6.yzw;
    r10.w = r11.x;
    r10.xyzw = r12.wwww * r10.xyzw + r13.xyzw;
    r6.yzw = cb9[r2.z+32].zxy * r10.yzx;
    r6.yzw = cb9[r2.z+32].yzx * r10.zxy + -r6.yzw;
    r5.y = dot(cb9[r2.z+32].xyz, r10.xyz);
    r11.w = -r5.y;
    r11.xyz = cb9[r2.z+32].www * r10.xyz + r6.yzw;
    r10.xyzw = r10.wwww * cb9[r2.z+32].xyzw + r11.xyzw;
    r6.yzw = cb9[r2.w+32].yzx * cb9[r2.z+0].zxy;
    r11.xyz = cb9[r2.z+0].yzx * cb9[r2.w+32].zxy + -r6.yzw;
    r5.y = dot(cb9[r2.z+0].xyz, cb9[r2.w+32].xyz);
    r11.w = -r5.y;
    r12.xyz = cb9[r2.z+0].xyz;
    r12.w = 0;
    r11.xyzw = cb9[r2.w+32].wwww * r12.xyzw + r11.xyzw;
    r6.yzw = -cb9[r2.w+32].zxy * r11.yzx;
    r6.yzw = -cb9[r2.w+32].yzx * r11.zxy + -r6.yzw;
    r6.yzw = cb9[r2.w+32].www * r11.xyz + r6.yzw;
    r6.yzw = r11.www * -cb9[r2.w+32].xyz + r6.yzw;
    r6.yzw = r6.yzw + -r5.xzw;
    r11.xyzw = r6.zwyy * -r7.zxzx;
    r12.xyz = -r6.wyz * -r7.zzx + r11.xyz;
    r12.w = -r11.w;
    r11.xyz = r6.xxx * r6.yzw;
    r11.w = 0;
    r11.xyzw = r12.xyzw + r11.xyzw;
    r6.yzw = r11.yzx * r7.zxz;
    r6.yzw = r7.zzx * r11.zxy + -r6.yzw;
    r6.xyz = r6.xxx * r11.xyz + r6.yzw;
    r6.xyz = r11.www * r7.xzz + r6.xyz;
    r7.xyz = -cb9[r2.w+32].yzx * r6.zxy;
    r7.xyz = r6.yzx * -cb9[r2.w+32].zxy + -r7.xyz;
    r2.z = dot(r6.xyz, -cb9[r2.w+32].xyz);
    r7.w = -r2.z;
    r6.xyz = cb9[r2.w+32].www * r6.xyz;
    r6.w = 0;
    r6.xyzw = r7.xyzw + r6.xyzw;
    r7.xyz = cb9[r2.w+32].zxy * r6.yzx;
    r7.xyz = cb9[r2.w+32].yzx * r6.zxy + -r7.xyz;
    r6.xyz = cb9[r2.w+32].www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * cb9[r2.w+32].xyz + r6.xyz;
    r6.xyz = cb9[r2.w+0].xyz + r6.xyz;
    r7.xyz = cb9[r2.w+32].yzx * r6.zxy;
    r7.xyz = r6.yzx * cb9[r2.w+32].zxy + -r7.xyz;
    r2.z = dot(r6.xyz, cb9[r2.w+32].xyz);
    r7.w = -r2.z;
    r6.xyz = cb9[r2.w+32].www * r6.xyz;
    r6.w = 0;
    r6.xyzw = r7.xyzw + r6.xyzw;
    r7.xyz = -cb9[r2.w+32].zxy * r6.yzx;
    r7.xyz = -cb9[r2.w+32].yzx * r6.zxy + -r7.xyz;
    r6.xyz = cb9[r2.w+32].www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * -cb9[r2.w+32].xyz + r6.xyz;
    r5.xyz = r6.xyz + -r5.xzw;
    r6.xyzw = r5.yzxz * -r8.zyyz;
    r7.xyz = -r5.zxy * -r8.yzy + r6.xyz;
    r7.w = -r6.w;
    r5.xyz = r9.xxx * r5.xyz;
    r5.w = 0;
    r5.xyzw = r7.xyzw + r5.xyzw;
    r6.xyz = r8.zyy * r5.yzx;
    r6.xyz = r8.yzy * r5.zxy + -r6.xyz;
    r5.xyz = r9.xxx * r5.xyz + r6.xyz;
    r5.xyz = r5.www * r8.yyz + r5.xyz;
    r6.xyz = -cb9[r2.w+32].yzx * r5.zxy;
    r6.xyz = r5.yzx * -cb9[r2.w+32].zxy + -r6.xyz;
    r2.z = dot(r5.xyz, -cb9[r2.w+32].xyz);
    r6.w = -r2.z;
    r5.xyz = cb9[r2.w+32].www * r5.xyz;
    r5.w = 0;
    r5.xyzw = r6.xyzw + r5.xyzw;
    r6.xyz = cb9[r2.w+32].zxy * r5.yzx;
    r6.xyz = cb9[r2.w+32].yzx * r5.zxy + -r6.xyz;
    r5.xyz = cb9[r2.w+32].www * r5.xyz + r6.xyz;
    r5.xyz = r5.www * cb9[r2.w+32].xyz + r5.xyz;
    r5.xyz = cb9[r2.w+0].xyz + r5.xyz;
    r6.xyz = r0.www * float3(7.50445747e-011,7.2853451e-010,1.33330472e-010) + float3(0,-1.132043,0.427350014);
    r7.xyzw = cmp(r0.wwww >= float4(0,1.73230208e+009,2.61993011e+009,4.2949673e+009));
    r7.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
    r7.xyz = r7.xyz + r7.yzw;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r6.xyz = r7.xyz * r6.xyz;
    r2.zw = r6.xy + r6.xy;
    r0.w = r2.z + r2.w;
    r0.w = saturate(r6.z * 2 + r0.w);
    r6.w = r0.w * 6 + -3;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r0.z = r0.z * r2.y;
    r0.zw = float2(2.32830644e-010,1.46291812e-009) * r0.zw;
    sincos(r0.z, r7.x, r8.x);
    sincos(r0.w, r9.x, r11.x);
    r8.y = r9.x * r7.x;
    r8.z = r11.x * r7.x;
    r2.xyz = r8.xyz * r2.xxx;
    r7.xyz = cb9[r0.y+32].yzx * cb9[r0.y+0].zxy;
    r7.xyz = cb9[r0.y+0].yzx * cb9[r0.y+32].zxy + -r7.xyz;
    r0.z = dot(cb9[r0.y+0].xyz, cb9[r0.y+32].xyz);
    r7.w = -r0.z;
    r8.xyz = cb9[r0.y+0].xyz;
    r8.w = 0;
    r7.xyzw = cb9[r0.y+32].wwww * r8.xyzw + r7.xyzw;
    r8.xyz = -cb9[r0.y+32].zxy * r7.yzx;
    r8.xyz = -cb9[r0.y+32].yzx * r7.zxy + -r8.xyz;
    r7.xyz = cb9[r0.y+32].www * r7.xyz + r8.xyz;
    r7.xyz = r7.www * -cb9[r0.y+32].xyz + r7.xyz;
    r8.xyz = -cb9[r0.y+32].zxy * r10.yzx;
    r8.xyz = -cb9[r0.y+32].yzx * r10.zxy + -r8.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, r10.xyz);
    r9.w = -r0.z;
    r9.xyz = cb9[r0.y+32].www * r10.xyz + r8.xyz;
    r8.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r8.xyzw = r10.wwww * r8.xyzw + r9.xyzw;
    r9.xyz = cb9[r0.y+32].yzx * r5.zxy;
    r9.xyz = r5.yzx * cb9[r0.y+32].zxy + -r9.xyz;
    r0.z = dot(r5.xyz, cb9[r0.y+32].xyz);
    r9.w = -r0.z;
    r5.xyz = cb9[r0.y+32].www * r5.xyz;
    r5.w = 0;
    r5.xyzw = r9.xyzw + r5.xyzw;
    r9.xyz = -cb9[r0.y+32].zxy * r5.yzx;
    r9.xyz = -cb9[r0.y+32].yzx * r5.zxy + -r9.xyz;
    r5.xyz = cb9[r0.y+32].www * r5.xyz + r9.xyz;
    r5.xyz = r5.www * -cb9[r0.y+32].xyz + r5.xyz;
    r5.xyz = -r7.xyz + r5.xyz;
    r7.xyz = -r8.yzx * r2.zxy;
    r7.xyz = r2.yzx * -r8.zxy + -r7.xyz;
    r0.z = dot(r2.xyz, -r8.xyz);
    r7.w = -r0.z;
    r2.xyz = r8.www * r2.xyz;
    r2.w = 0;
    r2.xyzw = r7.xyzw + r2.xyzw;
    r7.xyz = r8.zxy * r2.yzx;
    r7.xyz = r8.yzx * r2.zxy + -r7.xyz;
    r2.xyz = r8.www * r2.xyz + r7.xyz;
    r2.xyz = r2.www * r8.xyz + r2.xyz;
    r7.xyz = -cb9[r0.y+32].yzx * r5.zxy;
    r7.xyz = r5.yzx * -cb9[r0.y+32].zxy + -r7.xyz;
    r0.z = dot(r5.xyz, -cb9[r0.y+32].xyz);
    r7.w = -r0.z;
    r8.xyz = cb9[r0.y+32].www * r5.xyz;
    r8.w = 0;
    r7.xyzw = r8.xyzw + r7.xyzw;
    r8.xyz = cb9[r0.y+32].zxy * r7.yzx;
    r8.xyz = cb9[r0.y+32].yzx * r7.zxy + -r8.xyz;
    r7.xyz = cb9[r0.y+32].www * r7.xyz + r8.xyz;
    r7.xyz = r7.www * cb9[r0.y+32].xyz + r7.xyz;
    r0.yzw = cb9[r0.y+0].xyz + r7.xyz;
    r0.yzw = -cb12[7].xyz + r0.yzw;
    r0.y = dot(r0.yzw, r0.yzw);
    r6.y = sqrt(r0.y);
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
    r2.w = 100000;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r2.xyzw
    r2.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r5.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xxxx, r5.xyzw
    r6.xz = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.yyyy, r6.xyzw
    r1.x = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.zzzz, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.wwww, r3.xyzw
    r0.y = (int)r0.x + 5;
    r4.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
  }
  return;
}